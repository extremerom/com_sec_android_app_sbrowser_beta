.class public Lorg/chromium/ui/modaldialog/ModalDialogProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modaldialog/ModalDialogProperties$DialogStyles;,
        Lorg/chromium/ui/modaldialog/ModalDialogProperties$ModalDialogButtonSpec;,
        Lorg/chromium/ui/modaldialog/ModalDialogProperties$ButtonStyles;,
        Lorg/chromium/ui/modaldialog/ModalDialogProperties$ButtonType;,
        Lorg/chromium/ui/modaldialog/ModalDialogProperties$Controller;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final APP_MODAL_DIALOG_BACK_PRESS_HANDLER:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroidx/activity/u;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLOCK_INPUTS:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final BUTTON_GROUP_BUTTON_SPEC_LIST:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "[",
            "Lorg/chromium/ui/modaldialog/ModalDialogProperties$ModalDialogButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final BUTTON_STYLES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final BUTTON_TAP_PROTECTION_PERIOD_MS:Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;

.field public static final CANCEL_ON_TOUCH_OUTSIDE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final CHANGE_CUSTOM_VIEW_OR_BUTTONS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

.field public static final CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROLLER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Lorg/chromium/ui/modaldialog/ModalDialogProperties$Controller;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_BUTTON_BAR_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_STYLES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final FILTER_TOUCH_FOR_SECURITY:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

.field public static final FOCUS_DIALOG:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final FOOTER_MESSAGE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final HORIZONTAL_MARGIN:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final MESSAGE_PARAGRAPH_1:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_PARAGRAPH_2:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final NEGATIVE_BUTTON_CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEGATIVE_BUTTON_DISABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final NEGATIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PADDING:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_BUTTON_CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_BUTTON_DISABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final POSITIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAB_MODAL_DIALOG_CANCEL_ON_ESCAPE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final TITLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_ICON:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_MAX_LINES:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final TITLE_SCROLLABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final TOUCH_FILTERED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERTICAL_MARGIN:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final WRAP_CUSTOM_VIEW_IN_SCROLLABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->NAME:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CONTROLLER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v3}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v3, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TITLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v4, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v4}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v4, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TITLE_MAX_LINES:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v5, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v5}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v5, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TITLE_ICON:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v6, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v6}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v6, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->MESSAGE_PARAGRAPH_1:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v7, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v7}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v7, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->MESSAGE_PARAGRAPH_2:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v8, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v8}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v8, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CUSTOM_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v9, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v9}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v9, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CUSTOM_BUTTON_BAR_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v10, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v10}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v10, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->POSITIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v11, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v11}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v11, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->POSITIVE_BUTTON_CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v12, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct {v12}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v12, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->POSITIVE_BUTTON_DISABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v13, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v13}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v13, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->NEGATIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v14, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v14}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v14, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->NEGATIVE_BUTTON_CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v15, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct {v15}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v15, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->NEGATIVE_BUTTON_DISABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v16, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct/range {v16 .. v16}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v16, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->FOOTER_MESSAGE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v17, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v17 .. v17}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v17, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CANCEL_ON_TOUCH_OUTSIDE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v18, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    invoke-direct/range {v18 .. v18}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;-><init>()V

    sput-object v18, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->FILTER_TOUCH_FOR_SECURITY:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    new-instance v19, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-direct/range {v19 .. v19}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>()V

    sput-object v19, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TOUCH_FILTERED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v20, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct/range {v20 .. v20}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v20, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->BUTTON_GROUP_BUTTON_SPEC_LIST:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v21, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    invoke-direct/range {v21 .. v21}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;-><init>()V

    sput-object v21, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CHANGE_CUSTOM_VIEW_OR_BUTTONS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    new-instance v22, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v22 .. v22}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v22, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TITLE_SCROLLABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v23, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v23 .. v23}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v23, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->WRAP_CUSTOM_VIEW_IN_SCROLLABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v24, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct/range {v24 .. v24}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v24, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->BUTTON_STYLES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v25, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct/range {v25 .. v25}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v25, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->DIALOG_STYLES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v26, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v26 .. v26}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v26, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->FOCUS_DIALOG:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v27, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct/range {v27 .. v27}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v27, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->APP_MODAL_DIALOG_BACK_PRESS_HANDLER:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v28, Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;

    invoke-direct/range {v28 .. v28}, Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;-><init>()V

    sput-object v28, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->BUTTON_TAP_PROTECTION_PERIOD_MS:Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;

    new-instance v29, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v29 .. v29}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v29, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TAB_MODAL_DIALOG_CANCEL_ON_ESCAPE:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v30, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct/range {v30 .. v30}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v30, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->HORIZONTAL_MARGIN:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v31, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct/range {v31 .. v31}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v31, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->VERTICAL_MARGIN:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v32, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct/range {v32 .. v32}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v32, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->PADDING:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v33, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct/range {v33 .. v33}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v33, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->BLOCK_INPUTS:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    move-object/from16 v34, v15

    const/16 v15, 0x22

    new-array v15, v15, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/16 v35, 0x0

    aput-object v0, v15, v35

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    const/16 v0, 0xf

    aput-object v34, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    const/16 v0, 0x12

    aput-object v20, v15, v0

    const/16 v0, 0x13

    aput-object v21, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v18, v15, v0

    const/16 v0, 0x16

    aput-object v23, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v24, v15, v0

    const/16 v0, 0x19

    aput-object v25, v15, v0

    const/16 v0, 0x1a

    aput-object v26, v15, v0

    const/16 v0, 0x1b

    aput-object v27, v15, v0

    const/16 v0, 0x1c

    aput-object v28, v15, v0

    const/16 v0, 0x1d

    aput-object v29, v15, v0

    const/16 v0, 0x1e

    aput-object v30, v15, v0

    const/16 v0, 0x1f

    aput-object v31, v15, v0

    const/16 v0, 0x20

    aput-object v32, v15, v0

    const/16 v0, 0x21

    aput-object v33, v15, v0

    sput-object v15, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
