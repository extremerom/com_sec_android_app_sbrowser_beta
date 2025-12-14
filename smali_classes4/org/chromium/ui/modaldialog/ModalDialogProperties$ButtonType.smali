.class public interface abstract annotation Lorg/chromium/ui/modaldialog/ModalDialogProperties$ButtonType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modaldialog/ModalDialogProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ButtonType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NEGATIVE:I = 0x1

.field public static final POSITIVE:I = 0x0

.field public static final POSITIVE_EPHEMERAL:I = 0x3

.field public static final TITLE_ICON:I = 0x2
