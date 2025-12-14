.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method


# virtual methods
.method public final handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/e;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->d(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method
