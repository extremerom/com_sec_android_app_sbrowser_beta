.class public Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDITLOGPOLICY_AUDITLOGENABLED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final AUDIT_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSERPOLICY_AUTOFILL_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSERPOLICY_COOKIES_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSERPOLICY_HTTPPROXY_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSERPOLICY_JAVASCRIPT_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSERPOLICY_POPUPS_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final BROWSER_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final CERTIFICATEPOLICY_REVOCATIONCHECK_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final CERTIFICATE_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FIREWALLPOLICY_URLBLOCKED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FIREWALL_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final KNOXCUSTOMMANAGERSERVICE2_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADNAMESPACES_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADSTATE_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final RESTRICTION1_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final RESTRICTIONPOLICY_CAMERAENABLED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final RESTRICTIONPOLICY_CLIPBOARDALLOWED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field private static sBaseClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.sec.enterprise.content.SecContentProviderURI"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "AUDIT_URI"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->AUDIT_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "AUDITLOGPOLICY_AUDITLOGENABLED_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->AUDITLOGPOLICY_AUDITLOGENABLED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSER_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSER_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSERPOLICY_AUTOFILL_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSERPOLICY_AUTOFILL_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSERPOLICY_COOKIES_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSERPOLICY_COOKIES_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSERPOLICY_JAVASCRIPT_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSERPOLICY_JAVASCRIPT_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSERPOLICY_HTTPPROXY_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSERPOLICY_HTTPPROXY_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "BROWSERPOLICY_POPUPS_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->BROWSERPOLICY_POPUPS_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "CERTIFICATE_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->CERTIFICATE_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "CERTIFICATEPOLICY_REVOCATIONCHECK_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->CERTIFICATEPOLICY_REVOCATIONCHECK_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "FIREWALL_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->FIREWALL_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "FIREWALLPOLICY_URLBLOCKED_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->FIREWALLPOLICY_URLBLOCKED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "RESTRICTION1_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->RESTRICTION1_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "RESTRICTIONPOLICY_CAMERAENABLED_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->RESTRICTIONPOLICY_CAMERAENABLED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "RESTRICTIONPOLICY_CLIPBOARDALLOWED_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->RESTRICTIONPOLICY_CLIPBOARDALLOWED_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "KNOXCUSTOMMANAGERSERVICE2_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->KNOXCUSTOMMANAGERSERVICE2_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADSTATE_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADSTATE_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    const-string v2, "KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADNAMESPACES_METHOD"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADNAMESPACES_METHOD:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method

.method public static exists()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->sBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
