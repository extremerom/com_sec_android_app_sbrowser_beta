.class public final synthetic Lcom/sec/android/app/sbrowser/common/tnc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/tnc/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/tnc/a;->b:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/tnc/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/a;->b:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    check-cast p1, Ljava/lang/Boolean;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLoggingTask;->a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLoggingTask;->a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
