.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;ZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;->l(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;->m(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;)V

    const/4 p0, 0x1

    return p0
.end method
