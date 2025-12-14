.class Lorg/chromium/ui/display/PhysicalDisplayAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/display/PhysicalDisplayAndroid;-><init>(Landroid/view/Display;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/display/PhysicalDisplayAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid$1;->this$0:Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid$1;->this$0:Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    invoke-static {p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->c(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
