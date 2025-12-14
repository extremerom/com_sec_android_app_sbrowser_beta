.class public interface abstract annotation Lorg/chromium/base/library_loader/LibraryProcessType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final PROCESS_BROWSER:I = 0x1

.field public static final PROCESS_CHILD:I = 0x2

.field public static final PROCESS_UNINITIALIZED:I = 0x0

.field public static final PROCESS_WEBVIEW:I = 0x3

.field public static final PROCESS_WEBVIEW_CHILD:I = 0x4

.field public static final PROCESS_WEBVIEW_NONEMBEDDED:I = 0x5
