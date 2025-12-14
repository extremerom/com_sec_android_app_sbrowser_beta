.class public final Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Full"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u000f8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u0011R\u001a\u0010\u001d\u001a\u00020\u00148\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001d\u0010\u001fR\u001a\u0010 \u001a\u00020\n8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u000eR\u001a\u0010#\u001a\u00020\u00148\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008#\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "factory",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;)V",
        "Landroid/text/Spannable;",
        "getLinkedUrl",
        "()Landroid/text/Spannable;",
        "Ldb/j;",
        "",
        "getBundleUrls",
        "()Ldb/j;",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "getFactory",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "requestCode",
        "I",
        "getRequestCode",
        "isPp",
        "Z",
        "()Z",
        "contentId",
        "Ljava/lang/String;",
        "getContentId",
        "isFirstLaunch",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isFirstLaunch:Z

.field private final isPp:Z

.field private final requestCode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    const/16 p1, 0xb3

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->requestCode:I

    const-string p1, "30001"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->contentId:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->isFirstLaunch:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getBundleUrls()Ldb/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ldb/j;

    invoke-direct {v1, v0, p0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkedUrl()Landroid/text/Spannable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140893

    invoke-interface {v0, v2, v1, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getLinkedText(ILjava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public getMajor()Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$DefaultImpls;->getMajor(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFirstLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->isFirstLaunch:Z

    return p0
.end method

.method public isPp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->isPp:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Full(factory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
