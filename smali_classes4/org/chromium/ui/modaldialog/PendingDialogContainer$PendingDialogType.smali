.class Lorg/chromium/ui/modaldialog/PendingDialogContainer$PendingDialogType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modaldialog/PendingDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingDialogType"
.end annotation


# instance fields
.field public final dialogPriority:I

.field public final dialogType:I

.field public final propertyModel:Lorg/chromium/ui/modelutil/PropertyModel;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/modelutil/PropertyModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/modaldialog/PendingDialogContainer$PendingDialogType;->propertyModel:Lorg/chromium/ui/modelutil/PropertyModel;

    iput p2, p0, Lorg/chromium/ui/modaldialog/PendingDialogContainer$PendingDialogType;->dialogType:I

    iput p3, p0, Lorg/chromium/ui/modaldialog/PendingDialogContainer$PendingDialogType;->dialogPriority:I

    return-void
.end method
