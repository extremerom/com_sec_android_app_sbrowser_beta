.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/d;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/d;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/d;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/d;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->f(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
