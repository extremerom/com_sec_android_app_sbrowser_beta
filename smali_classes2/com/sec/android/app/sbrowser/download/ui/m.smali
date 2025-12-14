.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/m;->a:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/m;->a:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
