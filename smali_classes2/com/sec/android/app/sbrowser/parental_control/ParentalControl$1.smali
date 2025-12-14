.class Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "ParentalControl"

    const-string v0, "ParentalControlObserver onChange()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->updateParentalControlData()V

    return-void
.end method
