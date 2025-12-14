.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/h;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
