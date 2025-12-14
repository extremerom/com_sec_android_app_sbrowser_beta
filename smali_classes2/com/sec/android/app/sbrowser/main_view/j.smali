.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/j;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/main_view/j;->b:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/j;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/main_view/j;->b:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->k(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;JLandroid/content/DialogInterface;I)V

    return-void
.end method
