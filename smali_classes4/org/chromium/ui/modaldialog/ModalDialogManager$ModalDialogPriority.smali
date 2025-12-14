.class public interface abstract annotation Lorg/chromium/ui/modaldialog/ModalDialogManager$ModalDialogPriority;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modaldialog/ModalDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ModalDialogPriority"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final HIGH:I = 0x2

.field public static final LOW:I = 0x1

.field public static final NUM_ENTRIES:I = 0x3

.field public static final RANGE_MAX:I = 0x3

.field public static final RANGE_MIN:I = 0x1

.field public static final VERY_HIGH:I = 0x3
