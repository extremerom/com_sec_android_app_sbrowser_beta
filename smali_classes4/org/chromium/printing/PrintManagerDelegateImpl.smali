.class public Lorg/chromium/printing/PrintManagerDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/PrintManagerDelegate;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iput-object p1, p0, Lorg/chromium/printing/PrintManagerDelegateImpl;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method private dumpJobStatesForDebug()V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "printing"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/printing/PrintManagerDelegateImpl;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {p0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "STATE_UNKNOWN"

    goto :goto_1

    :pswitch_0
    const-string v3, "STATE_CANCELED"

    goto :goto_1

    :pswitch_1
    const-string v3, "STATE_FAILED"

    goto :goto_1

    :pswitch_2
    const-string v3, "STATE_COMPLETED"

    goto :goto_1

    :pswitch_3
    const-string v3, "STATE_BLOCKED"

    goto :goto_1

    :pswitch_4
    const-string v3, "STATE_STARTED"

    goto :goto_1

    :pswitch_5
    const-string v3, "STATE_QUEUED"

    goto :goto_1

    :pswitch_6
    const-string v3, "STATE_CREATED"

    :goto_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ", "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Initiating new print with states in queue: {%s}"

    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/printing/PrintManagerDelegateImpl;->dumpJobStatesForDebug()V

    iget-object p0, p0, Lorg/chromium/printing/PrintManagerDelegateImpl;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method
