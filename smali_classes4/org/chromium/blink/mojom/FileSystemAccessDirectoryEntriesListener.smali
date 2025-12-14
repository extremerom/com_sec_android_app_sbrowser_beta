.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;",
            "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract didReadDirectory(Lorg/chromium/blink/mojom/FileSystemAccessError;[Lorg/chromium/blink/mojom/FileSystemAccessEntry;Z)V
.end method
