.class public interface abstract annotation Lorg/chromium/base/supplier/ObservableSupplier$NotifyBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/supplier/ObservableSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NotifyBehavior"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NOTIFY_ON_ADD:I = 0x1

.field public static final POST_ON_ADD:I = 0x2
