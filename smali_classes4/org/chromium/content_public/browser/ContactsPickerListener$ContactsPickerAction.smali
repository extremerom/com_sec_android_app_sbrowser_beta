.class public interface abstract annotation Lorg/chromium/content_public/browser/ContactsPickerListener$ContactsPickerAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content_public/browser/ContactsPickerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ContactsPickerAction"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANCEL:I = 0x0

.field public static final CONTACTS_SELECTED:I = 0x1

.field public static final NUM_ENTRIES:I = 0x4

.field public static final SELECT_ALL:I = 0x2

.field public static final UNDO_SELECT_ALL:I = 0x3
