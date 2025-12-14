.class public final Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/donation/Donation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "contentServiceCaller",
        "<init>",
        "(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;)V",
        "Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;",
        "actionDonation",
        "Landroid/os/Bundle;",
        "sendDonatedActionInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)Landroid/os/Bundle;",
        "Ldb/r;",
        "donate",
        "(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V",
        "",
        "checkIfAccessAllowed",
        "()Z",
        "Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;",
        "",
        "TAG",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/ExecutorService;",
        "mExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "Companion",
        "deepsky-sdk-smartsuggestion-0.0.2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentServiceCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contentServiceCaller"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->contentServiceCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    const-string p1, "DonationImpl"

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->donate$lambda$0(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V

    return-void
.end method

.method private static final donate$lambda$0(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actionDonation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->sendDonatedActionInfo(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)Landroid/os/Bundle;

    return-void
.end method

.method private final sendDonatedActionInfo(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->contentServiceCaller:Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "DonationContract.CONTENT_URI"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_donation_json"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "donate_user_action"

    invoke-interface {p0, v0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkIfAccessAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public donate(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionDonation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
