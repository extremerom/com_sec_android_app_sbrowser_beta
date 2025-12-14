.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

.field private final mAppName:Landroid/widget/TextView;

.field private final mDividerView:Landroid/view/View;

.field private mIsFakeTouch:Z

.field private final mLaunchingCount:Landroid/widget/TextView;

.field private final mLaunchingDate:Landroid/widget/TextView;

.field private final mRoundedImage:Landroid/widget/ImageView;

.field private final mRowView:Landroid/view/View;

.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0632

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mRoundedImage:Landroid/widget/ImageView;

    const p2, 0x7f0b062c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAppName:Landroid/widget/TextView;

    const p2, 0x7f0b0633

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingCount:Landroid/widget/TextView;

    const p2, 0x7f0b0634

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingDate:Landroid/widget/TextView;

    const p2, 0x7f0b062e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mDividerView:Landroid/view/View;

    const p2, 0x7f0b0635

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAppName:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public dispatchFakeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mIsFakeTouch:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->c(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getBlocked()Z

    move-result v0

    if-eq p2, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;->onItemCheckedChange(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->setBlocked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mIsFakeTouch:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->c(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;I)Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;->onItemClick(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mIsFakeTouch:Z

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setLaunchingCount(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingCount:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLaunchingDate(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRoundedImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mRoundedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTextColorForCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingCount:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColorForDate(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$ItemViewHolder;->mLaunchingDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
