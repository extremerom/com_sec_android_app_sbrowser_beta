.class public final synthetic Lorg/chromium/ui/display/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/chromium/ui/display/PhysicalDisplayAndroid;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/display/a;->a:Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/a;->a:Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    check-cast p1, Landroid/view/Display;

    invoke-static {p0, p1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->b(Lorg/chromium/ui/display/PhysicalDisplayAndroid;Landroid/view/Display;)V

    return-void
.end method
