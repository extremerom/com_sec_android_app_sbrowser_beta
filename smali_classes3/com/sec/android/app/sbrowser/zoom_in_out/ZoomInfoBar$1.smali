.class Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->dismissPopup()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
