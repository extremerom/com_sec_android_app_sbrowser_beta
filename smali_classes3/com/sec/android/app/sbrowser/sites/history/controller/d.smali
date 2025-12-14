.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->d:I

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->a:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->d:I

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/d;->e:J

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->d(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
