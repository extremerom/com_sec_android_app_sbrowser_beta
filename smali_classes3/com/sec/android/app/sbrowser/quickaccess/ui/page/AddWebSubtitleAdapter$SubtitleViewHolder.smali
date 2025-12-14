.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubtitleViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;",
        "subTitle",
        "Ldb/r;",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;)V",
        "",
        "needToAdd",
        "setTopMargin",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;",
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
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subTitle"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const p1, 0x7f140067

    goto :goto_0

    :cond_2
    const p1, 0x7f14075f

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessFormatUtils;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method public final setTopMargin(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07007c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
