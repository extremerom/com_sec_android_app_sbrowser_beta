.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/a;->a:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/a;->a:J

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->a(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method
