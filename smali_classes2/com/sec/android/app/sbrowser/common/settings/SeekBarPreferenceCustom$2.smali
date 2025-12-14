.class Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->onBindViewHolder(Lw2/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

.field final synthetic val$view:Lw2/H;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Lw2/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->val$view:Lw2/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->o(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->val$view:Lw2/H;

    iget-object p2, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const p3, 0x1020010

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->m(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->k(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->l(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p3

    float-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->mSeekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->access$000(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V

    return-void
.end method
