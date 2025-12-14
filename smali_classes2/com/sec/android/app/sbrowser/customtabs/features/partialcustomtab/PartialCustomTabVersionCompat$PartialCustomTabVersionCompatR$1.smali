.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->setImeStateCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-static {p1}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {}, Lf1/E;->b()I

    move-result v0

    invoke-static {p1, v0}, Lf1/E;->q(Landroid/view/WindowInsets;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    return-object p1
.end method
