.class Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startAnimationImageAfter()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->e(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode$4;->this$0:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->m(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;)V

    return-void
.end method
