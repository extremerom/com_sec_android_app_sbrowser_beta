.class public Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/MVCListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public final model:Lorg/chromium/ui/modelutil/PropertyModel;

.field public final type:I


# direct methods
.method public constructor <init>(ILorg/chromium/ui/modelutil/PropertyModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->type:I

    iput-object p2, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    return-void
.end method
