.class public final Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;,
        Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;,
        Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u000389:B)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ#\u0010 \u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008 \u0010!J#\u0010#\u001a\u00020\u00132\n\u0010\"\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008#\u0010$J1\u0010#\u001a\u00020\u00132\n\u0010\"\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00072\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0016\u00a2\u0006\u0004\u0008#\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010,\u001a\u00020+2\u0006\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020\u0007\u00a2\u0006\u0004\u0008.\u0010*R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010/R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00100R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00101R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00105\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00107\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00106\u00a8\u0006;"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;",
        "listener",
        "",
        "currentColorId",
        "Landroidx/recyclerview/widget/J0;",
        "layoutManager",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;ILandroidx/recyclerview/widget/J0;)V",
        "Landroid/view/View;",
        "view",
        "colorIndex",
        "",
        "isSelected",
        "announce",
        "Ldb/r;",
        "updateDescription",
        "(Landroid/view/View;IZZ)V",
        "position",
        "updateSelect",
        "(I)V",
        "color",
        "Landroid/graphics/drawable/Drawable;",
        "createColorBackground",
        "(I)Landroid/graphics/drawable/Drawable;",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;",
        "holder",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;I)V",
        "",
        "",
        "payloads",
        "(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;ILjava/util/List;)V",
        "getItemCount",
        "()I",
        "",
        "getItemId",
        "(I)J",
        "getSelectedColorId",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;",
        "Landroidx/recyclerview/widget/J0;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;",
        "clickListener",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;",
        "defaultColorIndex",
        "I",
        "selectedColorIndex",
        "ViewHolder",
        "ItemClickListener",
        "ColorChangedListener",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clickListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultColorIndex:I

.field private final layoutManager:Landroidx/recyclerview/widget/J0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedColorIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;ILandroidx/recyclerview/widget/J0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/J0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->layoutManager:Landroidx/recyclerview/widget/J0;

    new-instance p1, LAa/a;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->clickListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getIndexOfColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->defaultColorIndex:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->updateDescription$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getClickListener$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;)Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->clickListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->clickListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final clickListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->updateSelect(I)V

    return-void
.end method

.method private final createColorBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    const v0, 0x7f08072d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    const v0, 0x7f0b0ca9

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method private final updateDescription(Landroid/view/View;IZZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    const v1, 0x7f140e6f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    const v1, 0x7f14081f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->COLOR_INDEX_LIST:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getColorName(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, LFa/a;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, LFa/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final updateDescription$lambda$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateSelect(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->layoutManager:Landroidx/recyclerview/widget/J0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/J0;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->defaultColorIndex:I

    if-eq v2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;->onColorChangedListener(Z)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->layoutManager:Landroidx/recyclerview/widget/J0;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->COLOR_INDEX_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getSelectedColorId()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->COLOR_INDEX_LIST:Ljava/util/List;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;I)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->selectedColorIndex:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->COLOR_INDEX_LIST:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getGroupColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->getParentView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->createColorBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->getSelectedIcon()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->getParentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->updateDescription(Landroid/view/View;IZZ)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V

    goto :goto_2

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->getSelectedIcon()Landroid/view/View;

    move-result-object v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->updateDescription(Landroid/view/View;IZZ)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e08cc

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;)V

    return-object p2
.end method
