.class public final Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;
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
    name = "PrivacyNotice"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001b\u001a\u0004\u0008\u0005\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u00118\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0013R\u001a\u0010 \u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008 \u0010\u001cR\u001a\u0010!\u001a\u00020\u000c8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010\u0010R\u001a\u0010$\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001b\u001a\u0004\u0008$\u0010\u001c\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "factory",
        "",
        "isMajor",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;Z)V",
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
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "getFactory",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;",
        "Z",
        "()Z",
        "requestCode",
        "I",
        "getRequestCode",
        "isPp",
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

.field private final isMajor:Z

.field private final isPp:Z

.field private final requestCode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    const/16 p1, 0xb5

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->requestCode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isPp:Z

    const-string p1, "30002"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->contentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ldb/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkedUrl()Landroid/text/Spannable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    const v0, 0x7f140892

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;->getLinkedText(ILjava/lang/String;)Landroid/text/Spannable;

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
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isFirstLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isFirstLaunch:Z

    return p0
.end method

.method public final isMajor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    return p0
.end method

.method public isPp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isPp:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->factory:Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrivacyNotice(factory="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isMajor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
