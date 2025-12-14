.class Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$5;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startAnimationImageBefore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$5;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$5;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->f(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
