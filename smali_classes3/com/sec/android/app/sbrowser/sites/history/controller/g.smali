.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/controller/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->c:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/g;->b:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->c(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;J)V

    return-void
.end method
