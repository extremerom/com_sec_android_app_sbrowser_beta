.class Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpBookmarkInfo"
.end annotation


# instance fields
.field mEditable:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;->mEditable:Ljava/lang/String;

    return-void
.end method
