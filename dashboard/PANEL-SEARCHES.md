# Scenario 04 Dashboard Panel Searches

These searches are also embedded in the exported Dashboard Studio JSON. They are copied here for quick review and GitHub readability.

## Total DNS Queries

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| stats count as total_dns_queries
```

## Unique Qnames

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| stats dc(qname) as unique_qnames
```

## Unique Child Labels

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| eval qname=lower(rtrim(qname,"."))
| eval first_label=mvindex(split(qname,"."),0)
| stats dc(first_label) as unique_child_labels
```

## Active Clients

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| stats dc(client_ip) as active_clients
```

## DNS Queries per Minute

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| timechart span=1m count as dns_queries
```

## First-Label Length Over Time

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| eval qname=lower(rtrim(qname,"."))
| eval first_label=mvindex(split(qname,"."),0)
| eval first_label_length=len(first_label)
| timechart span=1m
    avg(first_label_length) as avg_first_label_length
    max(first_label_length) as max_first_label_length
```

## Response Code Mix

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="reply"
| stats count as responses by rcode
| sort - responses
```

## Query Type Mix

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| stats count as queries by qtype
| sort - queries
```

## Top Parent Domains

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| eval qname=lower(rtrim(qname,"."))
| eval labels=split(qname,".")
| eval parent_domain=mvjoin(mvindex(labels,1,-1),".")
| stats
    count as query_count
    dc(qname) as unique_qnames
    by parent_domain
| sort - query_count
| head 15
```

## DNS Behavior Window Summary

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| eval qname=lower(rtrim(qname,"."))
| eval labels=split(qname,".")
| eval first_label=mvindex(labels,0)
| eval parent_domain=mvjoin(mvindex(labels,1,-1),".")
| eval qname_length=len(qname)
| eval first_label_length=len(first_label)
| bin _time span=1m
| stats
    count as query_count
    dc(qname) as unique_qnames
    dc(first_label) as unique_child_labels
    avg(qname_length) as avg_qname_length
    max(qname_length) as max_qname_length
    avg(first_label_length) as avg_first_label_length
    max(first_label_length) as max_first_label_length
    values(qtype) as qtypes
    values(qname) as qname_samples
    by _time client_ip parent_domain
| sort - unique_child_labels - max_first_label_length - query_count
```

## Raw DNS Investigation

```spl
index=dns_soc_dns host=dns-soc-resolver01 sourcetype=unbound:dns event_type="query"
| eval qname=lower(rtrim(qname,"."))
| eval labels=split(qname,".")
| eval first_label=mvindex(labels,0)
| eval parent_domain=mvjoin(mvindex(labels,1,-1),".")
| eval qname_length=len(qname)
| eval first_label_length=len(first_label)
| table _time client_ip qname qtype parent_domain qname_length first_label first_label_length
| sort - _time
```
