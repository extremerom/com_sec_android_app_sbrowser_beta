.class public final synthetic Lcom/sec/android/app/sbrowser/media/history/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->b:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    iput p3, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->c:I

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->a:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/g;->b:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->f(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
