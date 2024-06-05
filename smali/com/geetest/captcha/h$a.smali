.class public final Lcom/geetest/captcha/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/geetest/captcha/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/h;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/h$a;->a:Lcom/geetest/captcha/h;

    return-void
.end method

.method public static synthetic a()Lcom/geetest/captcha/h;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/h$a;->a:Lcom/geetest/captcha/h;

    return-object v0
.end method
