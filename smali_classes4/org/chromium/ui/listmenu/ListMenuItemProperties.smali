.class public Lorg/chromium/ui/listmenu/ListMenuItemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field public static final CLICK_LISTENER:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

.field public static final END_ICON_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final GROUP_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final ICON_TINT_COLOR_STATE_LIST_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final INTENT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_TEXT_ELLIPSIZED_AT_END:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

.field public static final KEEP_START_ICON_SPACING_WHEN_HIDDEN:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

.field public static final MENU_ITEM_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final START_ICON_DRAWABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_ICON_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

.field public static final TEXT_APPEARANCE_ID:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

.field public static final TITLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v0, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->TITLE_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v1, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v1, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->TITLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->CONTENT_DESCRIPTION:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v3}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v3, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->START_ICON_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v4, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v4}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v4, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->START_ICON_DRAWABLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v5, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v5}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v5, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->END_ICON_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v6, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v6}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v6, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->GROUP_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v7, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v7}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v7, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->MENU_ITEM_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v8, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v8}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v8, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->CLICK_LISTENER:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v9, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v9}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v9, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->INTENT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v10, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-direct {v10}, Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;-><init>()V

    sput-object v10, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->ENABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    new-instance v11, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-direct {v11}, Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;-><init>()V

    sput-object v11, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->ICON_TINT_COLOR_STATE_LIST_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    new-instance v12, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {v12}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;-><init>()V

    sput-object v12, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->TEXT_APPEARANCE_ID:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    new-instance v13, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    invoke-direct {v13}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;-><init>()V

    sput-object v13, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->IS_TEXT_ELLIPSIZED_AT_END:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    new-instance v14, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    invoke-direct {v14}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;-><init>()V

    sput-object v14, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->KEEP_START_ICON_SPACING_WHEN_HIDDEN:Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;

    const/16 v15, 0xf

    new-array v15, v15, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/16 v16, 0x0

    aput-object v0, v15, v16

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

    sput-object v15, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
