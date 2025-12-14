.class Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceHttpNegotiateAuthenticator$TerraceHttpKerberosAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNegotiateToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p0}, LLa/c;->b(Landroid/content/Context;)LLa/c;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, LLa/c;->c(Landroid/content/Context;Ljava/lang/String;)LLa/f;

    move-result-object p0

    iget-object p0, p0, LLa/f;->a:Ljava/lang/String;
    :try_end_0
    .catch LLa/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch LLa/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "fail to get token. e:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "KerberosAuthenticator"

    invoke-static {p0, p1, p3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p2
.end method
