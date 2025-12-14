.class Lorg/chromium/base/library_loader/LibraryLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jni_zero/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/library_loader/LibraryLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areNativeMethodsReady()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-static {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->d(Lorg/chromium/base/library_loader/LibraryLoader;)Z

    move-result p0

    return p0
.end method
