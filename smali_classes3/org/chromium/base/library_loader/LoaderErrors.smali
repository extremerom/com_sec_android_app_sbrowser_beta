.class public interface abstract annotation Lorg/chromium/base/library_loader/LoaderErrors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final FAILED_TO_REGISTER_JNI:I = 0x1

.field public static final NATIVE_LIBRARY_LOAD_FAILED:I = 0x2

.field public static final NATIVE_LIBRARY_WRONG_VERSION:I = 0x3

.field public static final NATIVE_STARTUP_FAILED:I = 0x4

.field public static final NORMAL_COMPLETION:I
