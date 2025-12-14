.class public final synthetic Lcom/sec/android/app/sbrowser/download/completed_info/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field public final synthetic b:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->a:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->b:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->c:Landroid/app/Activity;

    iput p4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->a:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->b:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->c:Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/a;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->b(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method
