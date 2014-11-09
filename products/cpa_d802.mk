#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (cpa_d802,$(TARGET_PRODUCT))

#HAVE NFC?
HAVE_NFC := true

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

ROM_VERSION_TAG := OFFICIAL

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/cpa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/d802/d802.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d802
PRODUCT_NAME := cpa_d802
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D802
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d802 BUILD_FINGERPRINT=lge/g2_open_com/g2:4.4.2/KOT49I.D80220a/D80220a.1392133741:user/release-keys PRIVATE_BUILD_DESC="g2_open_com-user 4.4.2 KOT49I.D80220a D80220a.1392133741 release-keys"

endif
