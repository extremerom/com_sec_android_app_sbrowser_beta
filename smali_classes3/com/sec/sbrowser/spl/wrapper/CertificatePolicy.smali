.class public Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final BROWSER_MODULE:Ljava/lang/String;

.field private static sBrowserModule:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;

.field private static sIsRevocationCheckEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sNotifyCertificateFailure:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.sec.enterprise.knox.certificate.CertificatePolicy"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isRevocationCheckEnabled"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sIsRevocationCheckEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "notifyCertificateFailure"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sNotifyCertificateFailure:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "BROWSER_MODULE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sBrowserModule:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :try_start_0
    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "browser_module"

    :goto_0
    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->BROWSER_MODULE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "isRevocationCheckEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sIsRevocationCheckEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "notifyCertificateFailure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sNotifyCertificateFailure:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "BROWSER_MODULE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sBrowserModule:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sIsRevocationCheckEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CertificatePolicy;->sNotifyCertificateFailure:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
