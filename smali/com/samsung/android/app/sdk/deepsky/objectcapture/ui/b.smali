.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/OverflowPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/OverflowPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/b;->a:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/b;->b:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/OverflowPanel;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/b;->b:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/OverflowPanel;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/b;->a:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;->e(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
