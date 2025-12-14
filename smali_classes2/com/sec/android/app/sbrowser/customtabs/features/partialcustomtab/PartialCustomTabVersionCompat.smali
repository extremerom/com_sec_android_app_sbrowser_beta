.class abstract Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;,
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mPositionUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mPositionUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;

    invoke-direct {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatLegacy;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;

    invoke-direct {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getDisplayHeight()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract getDisplayWidth()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract getDisplayWidthDp()I
.end method

.method public abstract getNavigationBarHeight()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract getScreenWidth()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract getStatusBarHeight()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract getXOffset()I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end method

.method public abstract setImeStateCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updatePosition()V
.end method
