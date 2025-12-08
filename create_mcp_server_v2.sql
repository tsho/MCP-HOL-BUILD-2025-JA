USE ROLE ACCOUNTADMIN;
use warehouse mcp_wh;
use database health_db;
use schema public;
create or replace mcp server health_mcp_server_v2 from specification
$$
tools:
  - name: "pubmed_search"
    identifier: "PUBMED_BIOMEDICAL_RESEARCH_CORPUS.OA_COMM.PUBMED_OA_CKE_SEARCH_SERVICE"
    type: "CORTEX_SEARCH_SERVICE_QUERY"
    description: "NIH/NLM PubMedの査読済み医学文献を検索します。薬物の適応症、有効性、安全性、作用機序、治療法の比較、医学的事実については必ず使用してください。使用方法：'query'パラメータに検索語を指定するだけで、サービスが自動的にすべてのコンテンツを検索します。"
    title: "PubMed"
  - name: "clinical_trials_search"
    identifier: "CLINICAL_TRIALS_RESEARCH_DATABASE.CT.CLINICAL_TRIALS_SEARCH_SERVICE"
    type: "CORTEX_SEARCH_SERVICE_QUERY"
    description: "グローバルな臨床試験データベースを検索します。薬物の承認適応症、試験募集、適格基準、試験デザイン、エンドポイント、規制経路については必ず使用してください。使用方法：'query'パラメータに検索語を指定するだけで、サービスが自動的にすべての試験フィールドを検索します。"
    title: "Clinical Trials"
$$;

USE ROLE ACCOUNTADMIN;

GRANT USAGE ON MCP SERVER health_mcp_server_v2 TO ROLE PUBLIC;