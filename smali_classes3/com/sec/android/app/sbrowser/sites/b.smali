.class public final synthetic Lcom/sec/android/app/sbrowser/sites/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/Sites;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/Sites;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/b;->a:Lcom/sec/android/app/sbrowser/sites/Sites;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/sites/b;->b:J

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/b;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/b;->c:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/b;->a:Lcom/sec/android/app/sbrowser/sites/Sites;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/b;->b:J

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->d(Lcom/sec/android/app/sbrowser/sites/Sites;JJ)V

    return-void
.end method
