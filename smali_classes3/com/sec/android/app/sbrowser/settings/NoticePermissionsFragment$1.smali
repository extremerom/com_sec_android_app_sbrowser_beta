.class Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;

.field final synthetic val$bgColor:I

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;->val$decorView:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;->val$bgColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p1, p2, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p1}, Lf1/u0;->e()Lf1/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;->val$decorView:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment$1;->val$bgColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p2
.end method
