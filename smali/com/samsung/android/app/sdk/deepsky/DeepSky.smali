.class public final Lcom/samsung/android/app/sdk/deepsky/DeepSky;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000  2\u00020\u0001:\u0001 B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\r\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u0008R\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u000cR\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000cR\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0018\u0010\u000cR\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u001b\u0010\u000cR\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\n\u001a\u0004\u0008\u001e\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/DeepSky;",
        "",
        "Landroid/content/Context;",
        "appContext",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "getDonation",
        "()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "suggestionRequestByLazy$delegate",
        "Ldb/f;",
        "getSuggestionRequestByLazy",
        "()Ljava/lang/Object;",
        "suggestionRequestByLazy",
        "donationByLazy$delegate",
        "getDonationByLazy",
        "donationByLazy",
        "contributionByLazy$delegate",
        "getContributionByLazy",
        "contributionByLazy",
        "searchByLazy$delegate",
        "getSearchByLazy",
        "searchByLazy",
        "widgetRotationByLazy$delegate",
        "getWidgetRotationByLazy",
        "widgetRotationByLazy",
        "feedbackByLazy$delegate",
        "getFeedbackByLazy",
        "feedbackByLazy",
        "smartWidgetByLazy$delegate",
        "getSmartWidgetByLazy",
        "smartWidgetByLazy",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final contributionByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final donationByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final feedbackByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final smartWidgetByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suggestionRequestByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final widgetRotationByLazy$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$suggestionRequestByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$suggestionRequestByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->suggestionRequestByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$donationByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$donationByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->donationByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$contributionByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$contributionByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->contributionByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$searchByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$searchByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->searchByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->widgetRotationByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$feedbackByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$feedbackByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->feedbackByLazy$delegate:Ldb/f;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->smartWidgetByLazy$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/samsung/android/app/sdk/deepsky/DeepSky;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    return-void
.end method

.method private final getDonationByLazy()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->donationByLazy$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/donation/Donation;

    return-object p0
.end method

.method public static final isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDonation()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getDonationByLazy()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;

    move-result-object p0

    return-object p0
.end method
