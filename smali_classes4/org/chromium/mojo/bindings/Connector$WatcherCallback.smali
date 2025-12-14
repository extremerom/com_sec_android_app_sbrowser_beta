.class Lorg/chromium/mojo/bindings/Connector$WatcherCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/Watcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatcherCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/Connector;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/Connector;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector$WatcherCallback;->this$0:Lorg/chromium/mojo/bindings/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/mojo/bindings/Connector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector$WatcherCallback;-><init>(Lorg/chromium/mojo/bindings/Connector;)V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Connector$WatcherCallback;->this$0:Lorg/chromium/mojo/bindings/Connector;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/Connector;->a(Lorg/chromium/mojo/bindings/Connector;I)V

    return-void
.end method
