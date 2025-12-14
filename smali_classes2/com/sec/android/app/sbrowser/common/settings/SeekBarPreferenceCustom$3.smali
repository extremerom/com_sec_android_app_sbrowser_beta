.class Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->g(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->n(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;I)F

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->e(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p3

    add-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->setValue(FZ)V

    :cond_2
    return v1

    :cond_3
    const/16 p3, 0x15

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->f(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_4

    return v1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p3

    sub-float p3, p1, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom$3;->this$0:Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->h(Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/settings/SeekBarPreferenceCustom;->setValue(FZ)V

    :cond_5
    return v1

    :cond_6
    return v0
.end method
