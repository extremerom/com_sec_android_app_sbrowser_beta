.class Lorg/chromium/ui/modelutil/ModelListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/ListObservable$ListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/modelutil/ModelListAdapter;-><init>(Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/modelutil/ModelListAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/modelutil/ModelListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/modelutil/ModelListAdapter$1;->this$0:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(Lorg/chromium/ui/modelutil/ListObservable;II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter$1;->this$0:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
