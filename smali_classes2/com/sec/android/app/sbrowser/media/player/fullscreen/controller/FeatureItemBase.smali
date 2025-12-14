.class abstract Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0712

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateVisibility()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->lambda$setOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->getSALoggingDetail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mActivity:Landroid/app/Activity;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->getSALoggingEventId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mActivity:Landroid/app/Activity;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->getSALoggingEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->start()V

    return-void
.end method

.method private updateDescription()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getTextResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->addButtonDescription(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private updateImage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getImageResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private updateText()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getHoverPopupText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getHoverPopupText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setString(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->setHoverPopupEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getHoverPopupText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getTextResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImageResId()I
.end method

.method public abstract getTextResId()I
.end method

.method public abstract getVisibility()I
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V

    return-void
.end method

.method public setHoverPopupEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mHoverListener:Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/a;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public shouldRemoveOnClickListener()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mClickListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;->onClick(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V

    :cond_0
    return-void
.end method

.method public updateResource()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateDescription()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->updateText()V

    return-void
.end method

.method public updateVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemBase;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
