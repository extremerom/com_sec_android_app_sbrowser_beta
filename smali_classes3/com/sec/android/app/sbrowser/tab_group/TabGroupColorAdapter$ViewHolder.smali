.class public final Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/view/View;",
        "parentView",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;)V",
        "Landroid/view/View;",
        "getParentView",
        "()Landroid/view/View;",
        "setParentView",
        "(Landroid/view/View;)V",
        "selectedIcon",
        "getSelectedIcon",
        "setSelectedIcon",
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
.field private parentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedIcon:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "parentView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->parentView:Landroid/view/View;

    const v0, 0x7f0b0559

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->selectedIcon:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->parentView:Landroid/view/View;

    new-instance v0, LFa/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->parentView:Landroid/view/View;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder$2;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;->access$getClickListener$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;)Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;

    move-result-object p0

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getParentView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->parentView:Landroid/view/View;

    return-object p0
.end method

.method public final getSelectedIcon()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->selectedIcon:Landroid/view/View;

    return-object p0
.end method
