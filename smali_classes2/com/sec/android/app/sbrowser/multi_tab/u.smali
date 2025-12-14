.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/u;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/u;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
