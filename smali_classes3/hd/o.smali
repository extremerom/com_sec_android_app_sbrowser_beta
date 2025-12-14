.class public final Lhd/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhd/b;

.field public static final c:Lhd/n;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:Lhd/o;

.field public static final f:Lhd/o;

.field public static final g:Lhd/o;

.field public static final h:Lhd/o;

.field public static final i:Lhd/o;

.field public static final j:Lhd/o;

.field public static final k:Lhd/o;

.field public static final l:Lhd/o;

.field public static final m:Lhd/o;

.field public static final n:Lhd/o;

.field public static final o:Lhd/o;

.field public static final p:Lhd/o;

.field public static final q:Lhd/o;

.field public static final r:Lhd/o;

.field public static final s:Lhd/o;

.field public static final t:Lhd/o;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhd/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhd/o;->b:Lhd/b;

    new-instance v1, Lhd/n;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lhd/o;->c:Lhd/n;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lhd/o;->d:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->e:Lhd/o;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->f:Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->g:Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->h:Lhd/o;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->i:Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->j:Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->k:Lhd/o;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->l:Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->m:Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->n:Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->o:Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->p:Lhd/o;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->q:Lhd/o;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->r:Lhd/o;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->s:Lhd/o;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    move-result-object v1

    sput-object v1, Lhd/o;->t:Lhd/o;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lhd/b;->a(Lhd/b;Ljava/lang/String;)Lhd/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhd/o;->a:Ljava/lang/String;

    return-object p0
.end method
