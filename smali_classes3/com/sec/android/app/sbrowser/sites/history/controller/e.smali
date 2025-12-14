.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->d:J

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->d:J

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/e;->e:J

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->f(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method
